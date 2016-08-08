require 'clark/event_bus/listener'
require 'clark_event/listener'
# require 'clark/event/model'

module Clark
  module Event
    class Worker
      def initialize(options = {})
        @listener = Clark::EventBus::Listener.new(options)
      end

      def run
        @listener.on('user.registered') do |event|
          p event
        end
      end
    end
  end
end
