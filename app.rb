require "fluent-logger"

logger = Fluent::Logger::FluentLogger.new(nil, host: "localhost", port: 24224, nanosecond_precision: true)
logger.post("myapp.access", {"key 1": 123456789, "key 2": "abcdefg"})

level_logger = Fluent::Logger::LevelFluentLogger.new(nil, host: "localhost", port: 24224, nanosecond_precision: true)
level_logger.level = Logger::WARN
level_logger.info("This will not be output.")
level_logger.warn("This will be output.")
