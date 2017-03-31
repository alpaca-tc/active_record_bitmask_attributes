Module.new do
  def with_bitmask(klass, *args)
    klass.bitmask(*args)
    yield
  ensure
    klass.__send__(:_bitmask_mappings).clear
  end

  RSpec.configure do |config|
    config.include(self)
  end
end