require './lib/caesar_cipher'

describe CaesarCipher do
  describe "#encrypt" do
    it "returns encrpyted message by shifting alphabets by given key" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("abc", 2)).to eql("cde")
    end

    it "returns encrypted message in same case as unencrypted message" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("HeLLo", 1)).to eql("IfMMp")
    end

    it "returns non-alphabetical characters without encrpytion" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("Code 123!",3)).to eql("Frgh 123!")
    end

    it "able to encrypt when key more than 26" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("Code 123!", 30)).to eql("Gshi 123!")
    end
  end
end