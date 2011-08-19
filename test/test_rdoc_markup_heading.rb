require 'rdoc/test_case'

class TestRDocMarkupHeading < RDoc::TestCase

  def setup
    @h = RDoc::Markup::Heading.new 1, 'Hello *Friend*!'
  end

  def test_label
    assert_equal 'label-Hello+Friend%21', @h.label
  end

  def test_plain_html
    assert_equal 'Hello <strong>Friend</strong>!', @h.plain_html
  end

end

