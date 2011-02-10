module PostsHelper
def is_required?(attribute)
  "required" if Post.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator
end
end
