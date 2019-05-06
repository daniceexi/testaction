workflow "print_message" {
  on = "push"
  resolves = ["Hello World"]
}

action "action-a/" {
  uses = "./action-a/"
  args = "I am here to test the actions."
}

action "Hello World" {
  uses = "./action-a"
  needs = ["action-a/"]
}
