alphabet = ('a'..'z').to_a
digits = ('0'..'9').to_a
ALPHA_NUMERIC = alphabet.concat(digits)

def generate_uiud
  result = ''
  8.times { result += ALPHA_NUMERIC.sample }
  result += '-'
  4.times { result += ALPHA_NUMERIC.sample }
  result += '-'
  4.times { result += ALPHA_NUMERIC.sample }
  result += '-'
  4.times { result += ALPHA_NUMERIC.sample }
  result += '-'
  12.times { result += ALPHA_NUMERIC.sample }
  result
end

# Official Solution
def generate_UIUD
  characters = []
  (0..9).each { |digit| chararcters << digit.to_s}
  ('a'..'f').each { |char| characters << char }

  uiud = ''
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uiud += characters.sample }
    uiud += '-' unless index >= (sections.size - 1)
  end

  uiud
end
