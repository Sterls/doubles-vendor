# Doubles Vendor

Run a Trinidad doubles stand. Build each order (two bara, channa, pepper, toppings), then **shake the phone to wrap it** and hand it over. Spend the day's takings on toppings, helpers and better locations, from under the mango tree to Piarco Airport.

The whole game is `index.html` — no build step. Serve the folder over HTTPS (for example GitHub Pages) and open it on a phone; phones only deliver shake data to secure pages. On iOS, allow motion access when asked. Without a shake sensor, tap WRAP or press Space.

## Leaderboard

Players can share a score card from the game (phone share sheet, WhatsApp, X, Facebook). Out of the box the leaderboard shows only the best mornings on that phone. For a worldwide board, create a Supabase project, run `leaderboard.sql` in its SQL editor, and put the project URL and publishable (anon) key into `BOARD` in `index.html`.
