# -*- python -*-

def _impl(ctx):
    output = ctx.outputs.out

    ctx.actions.run_shell(
        outputs= [output],
        progress_message = "Creating header file",
        command = "echo \"const char * mystring = \\\"messagestat\\\";\" > '%s'" % (output.path),
    )

my_rule = rule(
    attrs = {
    },
    executable = False,
    implementation = _impl,
    outputs = {"out": "%{name}.h"},
)
