# Doubles Vendor

Run a Trinidad doubles stand. Build each order (two bara, channa, pepper, toppings), then **shake the phone to wrap it** and hand it over. Spend the day's takings on toppings, helpers and better locations, from under the mango tree to Piarco Airport.

The whole game is `index.html` — no build step. Serve the folder over HTTPS (for example GitHub Pages) and open it on a phone; phones only deliver shake data to secure pages. On iOS, allow motion access when asked. Without a shake sensor, tap WRAP or press Space.

## Leaderboard

Players can share a score card from the game (phone share sheet, WhatsApp, X, Facebook). Out of the box the leaderboard shows only the best mornings on that phone. For a worldwide board, create a Supabase project, run `leaderboard.sql` in its SQL editor, and put the project URL and publishable (anon) key into `BOARD` in `index.html`.

## Vs mode

"Vs a friend" on the opening screen runs a live 90-second match: one player starts a match and gets a four-letter code (or a link), the other joins, and both play the same seeded customers on a fresh stand with every topping. Customers come faster and order more as time runs down, and the last 15 seconds pay double.

It uses Supabase Realtime broadcast through the same `BOARD` URL and key as the leaderboard. No table is needed and nothing is stored. Until `BOARD` is filled in, the Vs screen says the online service is not connected.
