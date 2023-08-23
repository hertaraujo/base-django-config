from ...core.utils.settings import get_settings_from_environment
from ...core.utils.collections import deep_update

""" 
Takes env variables with a matching prefix, strips out the prefix, and adds it ot global

Ex:
export CORESETTINGS_IN_DOCKER=true (environment variable)

Could then be referenced as a global as:
IN_DOCKER (where the value would be True)
"""

# globals() is a dictionary of global variables

deep_update(globals(), get_settings_from_environment(ENVVAR_SETTINGS_PREFIX))  # type: ignore
