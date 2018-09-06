load(":testrule.bzl", "my_rule")

my_rule(name="test")

cc_binary(
    name = "main",
    srcs = ["main.cc", ":test.h"],
)
