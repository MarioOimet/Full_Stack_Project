Rails.configuration.stripe = {
  publishable_key: "pk_test_SAEfTZB3nyLsdbxywfTzoDSE",
  secret_key: "sk_test_9IKSVRD3UPTdRUBNLtUwSkyj"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
