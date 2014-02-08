class Model
  def initialize(data = {})
    @data = data
  end

  def clear
    @data = {}
    self
  end

  def get(key = nil)
    return @data if key == nil
    @data[key]
  end

  def set(key, value = nil)
    unless value == nil
      @data[key] = value
    else
      @data = key
    end
    self
  end

  def toJSON
    @data
  end

  def destroy
    clear
  end
end
