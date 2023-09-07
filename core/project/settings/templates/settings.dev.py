# mypy: ignore-errors

DEBUG = True
SECRET_KEY = "django-insecure-&!=hplkbsv%#gp48f0679kq!9_q#zc$g_faw%2@=bd_t)xv8aw"

MIDDLEWARE += ("core.core.middleware.LoggingMiddleware",)
LOGGING["formatters"]["colored"] = {
    "()": "colorlog.ColoredFormatter",
    "format": "%(log_color)s%(asctime)s %(levelname)s %(name)s %(bold_white)s%(message)s",
}
LOGGING["loggers"]["core"]["level"] = "DEBUG"
LOGGING["handlers"]["console"]["level"] = "DEBUG"
LOGGING["handlers"]["console"]["formatter"] = "colored"
