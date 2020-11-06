# Rearranger

## Tesing solution

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Remarks

  * In the questionnaire there was a point about unit vs integration tests. The solution shows my stance on that. Only two integration tests to test final html results in `RearrangerLiveTest` and more unit tests in `RearrangerTest`
  * A single function doesn't really need an API. Normally I would create a separate context but that would be over-complicated in this simple scenario.
  * For LiveView button and label didn't make sense. I made the text change on input update. The magic of LiveView lies in fast feedback. For real work solution I would first discuss the change of requirements but for job application I just wanted to show how I think it should be done.
  * That assignment is perfect for Property Based Testing but I didn't want to complicate the job of someone who evaluates it.
  * The solution to the actual problem is one liner because `Kernel.--/2` does exactly what is expected. I can assure you that I would be able to do it using recursion too :)

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
