import { createServer } from 'node:http';
import { previewQuote } from './lib/quote.mjs';
import { mealEligibility } from './lib/eligibility.mjs';

export const server = createServer(async (request, response) => {
  response.setHeader('content-type', 'application/json; charset=utf-8');
  if (request.method === 'GET' && request.url === '/health') {
    response.end(JSON.stringify({ status: 'ok', mode: 'local-preview' }));
    return;
  }
  if (request.method !== 'POST' || !['/preview/quote', '/preview/eligibility'].includes(request.url)) {
    response.writeHead(404);
    response.end(JSON.stringify({ error: 'Not found' }));
    return;
  }
  try {
    let raw = '';
    for await (const chunk of request) {
      raw += chunk;
      if (raw.length > 8192) throw new RangeError('Request too large');
    }
    const input = JSON.parse(raw);
    const result = request.url === '/preview/quote'
      ? previewQuote(input)
      : mealEligibility(input.memberAllergens, input.mealAllergens);
    response.end(JSON.stringify(result));
  } catch {
    response.writeHead(400);
    response.end(JSON.stringify({ error: 'Invalid preview request' }));
  }
});

if (process.argv[1] === new URL(import.meta.url).pathname) {
  const port = Number(process.env.PORT || 8080);
  server.listen(port, '127.0.0.1', () => console.log('JANTOK preview API on 127.0.0.1:' + port));
}
