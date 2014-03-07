require('rspec')
require('numbers_to_words3')

describe('numbers_to_words') do
  it('should translate single digit integers into English') do
    numbers_to_words(3).should(eq("three"))
  end
  it('should translate two digit integers into English') do
    numbers_to_words(13).should(eq("thirteen"))
  end
  it('should translate two digit integers into English') do
    numbers_to_words(55).should(eq("fiftyfive"))
  end
end
