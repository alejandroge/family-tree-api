class Person < ApplicationRecord
    has_parents sex_values: ['male', 'female']
end