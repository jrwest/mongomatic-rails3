class <%= class_name %> < Mongomatic::Base
  <%- if expectations? -%>
  include Mongomatic::Expectations::Helper
  <%- end -%>
end
<%- unless connection.blank? -%>
<%= class_name %>.db = <%= connection %>
<%- end -%>