BuildSettingInfo = provider( fields = ["value"] )

def _impl(ctx):
    return BuildSettingInfo(value = ctx.build_setting_value)

bool_flag = rule(
    implementation = _impl,
    build_setting = config.bool(flag = True)
)