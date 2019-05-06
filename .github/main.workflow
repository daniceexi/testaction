workflow "print_message" {
  on = "push"
  resolves = ["action-a/"]
}

action "action-a/" {
  uses = "./action-a/"
  args = "I am here to test the actions."
}
