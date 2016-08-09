require 'json'
require 'clark/event_bus/listener'
require 'clark_event/model'

module Clark
  module Event
    class Worker
      def initialize(options = {})
        @listener = Clark::EventBus::Listener.new(options)
      end

      def run
        on_user_registered = -> delivery_info, properties, payload do
          p "clark event queue receiving #{payload}, routing key is #{delivery_info.routing_key}"
          event = JSON.parse(payload)
          Clark::Event::Model.create(name: delivery_info.routing_key, payload: event)
        end

        while true
          listener.on('user.registered', &on_user_registered)
        end
      end

      private
      attr_reader :listener
    end
  end
end
