module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  def sort_query(selection)
    result = { :sort_by => selection }
    @ratings.keys.each do |rating|
      result = result.merge( { "ratings[#{rating}]" => "1" })
    end
    result
  end
end
