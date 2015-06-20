class Request < ActiveRecord::Base

	composed_of :name, class_name: "RequestStatus", mapping: %w(name)
end
