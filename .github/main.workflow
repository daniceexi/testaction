workflow "print_message" {
  resolves = [
    "Hello World",
    "Hello World-1",
  ]
  on = "push"
}

action "action-a/" {
  uses = "./action-a/"
  args = "I am here to test the actions."
}

action "Hello World" {
  uses = "./action-a"
  needs = ["action-a/"]
}

action "Hello World-1" {
  uses = "./action-a"
}
