require 'aruba/cucumber'

# Create aruba's working directory (tmp/aruba). The steps cd from there to
# ../../fixtures/<Rule>.
Before do
  setup_aruba
end
