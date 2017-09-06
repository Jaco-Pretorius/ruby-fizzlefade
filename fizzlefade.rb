class Fizzlefade
  def self.fizzle_320_by_200
    0.upto(320 - 1) do |x|
      0.upto(200 - 1) do |y|
        yield(x,y)
      end
    end
  end
end

# boolean fizzlefade(void)
# {
  # uint32_t rndval = 1;
  # uint16_t x,y;
  # do
  # {
     # y =  rndval & 0x000FF;  /* Y = low 8 bits */
     # x = (rndval & 0x1FF00) >> 8;  /* X = High 9 bits */
     # unsigned lsb = rndval & 1;   /* Get the output bit. */
     # rndval >>= 1;                /* Shift register */
     # if (lsb) {                 /* If the output is 0, the xor can be skipped. */
          # rndval ^= 0x00012000;
      # }
      # if (x < 320 && y < 200)
        # fizzle_pixel(x , y) ;
  # } while (rndval != 1);

  # return 0;
# }
