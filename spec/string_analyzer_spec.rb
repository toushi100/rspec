class StringAnalyzer
    def has_vowels?(str)
      !!(str =~ /[aeuio]+/i)
    end
  end
  
  describe StringAnalyzer do
    context "With valid input" do
      it "should detect when a string contains only one vowel and no other letters" do
        sa = StringAnalyzer.new
        test_string = "uuu"
        expect(sa.has_vowels? test_string).to be true
      end
  
      it "should detect when a string contains at least one vowel" do
        sa = StringAnalyzer.new
        test_string = "bcadfg"
        expect(sa.has_vowels? test_string).to be true
      end
  
      it "should detect when a string is empty" do
        sa = StringAnalyzer.new
        test_string = ""
        expect(sa.has_vowels? test_string).to be false
      end
  
      it "should detect when a string contains constants only" do
        sa = StringAnalyzer.new
        test_string = "gdgttp"
        expect(sa.has_vowels? test_string).to be false
      end
  
      it "should detect when a string contains constants vowels numbers and punctuation characters" do
        sa = StringAnalyzer.new
        test_string = "ddffa44@3??"
        expect(sa.has_vowels? test_string).to be true
      end
  
      it "should detect when a string contains numbers and punctuation charachers only" do
        sa = StringAnalyzer.new
        test_string = "736288@@##%%"
        expect(sa.has_vowels? test_string).to be false
      end
  
      it "should detect when a string contains uppercase vowels only" do
        sa = StringAnalyzer.new
        test_string = "AOUIE"
        expect(sa.has_vowels? test_string).to be true
      end
      it "should detect when a string contains uppercase and lowercase vowels only" do
          sa = StringAnalyzer.new
          test_string = "AOUaaoiueIE"
          expect(sa.has_vowels? test_string).to be true
        end
  
        it "should detect when a string contains uppercase and lowercase vowels and constants" do
          sa = StringAnalyzer.new
          test_string = "AOsaFSDGeUIE"
          expect(sa.has_vowels? test_string).to be true
        end
        it "should detect when a string contains uppercase constants only" do
          sa = StringAnalyzer.new
          test_string = "DKJFLR"
          expect(sa.has_vowels? test_string).to be false
        end
  
        it "should detect when a string contains whitespace characters only" do
          sa = StringAnalyzer.new
          test_string = " "
          expect(sa.has_vowels? test_string).to be false
        end
    end
  end
  