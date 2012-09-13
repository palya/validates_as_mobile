## ValidatesAsMobile

This is simple validator for Russian mobile numbers.  
Mobile numbers must match with formats:

+79000000000  
+7900 000 00 00  
+7900-000-00-00  
+7(900)0000000  
+7 (900)0000000  
+7(900) 000 00 00  
+7(900)000-00-00  
+7(903)-000-00-00

Or:

89000000000  
8900 000 00 00  
8900-000-00-00  
8(900)0000000  
8 (900)0000000  
8(900) 000 00 00  
8(900)000-00-00  
8(900)-000-00-00

## Install

Put it to your Gemfile:

```bash
gem 'validates_as_mobile'
```

And run

```bash
bundle
```

## Usage example

Add parameter for phone number to your model. Then add to model this validation:

```ruby
class Person < ActiveRecord::Base
  validates_as_mobile :phone_number, :message => "Your error message here", :allow_nil => false
end
```

Default error message is "Not Russian mobile phone format."
