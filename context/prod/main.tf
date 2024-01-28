resource "healthchecksio_check" "test" {
  name = "digger-test-check"
  desc = "A test check"

  tags = [
    "go",
    "gophers",
    "unite",
  ]

  grace    = 120 # seconds
  schedule = "0,30 2 * * *"
  timezone = "Asia/Tokyo"

  channels = [
    data.healthchecksio_channel.email-1.id,
    data.healthchecksio_channel.email-2.id,
    data.healthchecksio_channel.email-3.id,
  ]
}

data "healthchecksio_channel" "email-1" {
  kind = "email"
  name = "email-me"
}

data "healthchecksio_channel" "email-2" {
  kind = "email"
  name = "email-me-again"
}

data "healthchecksio_channel" "email-3" {
  kind = "email"
  name = "email-me-a-third-time"
}
