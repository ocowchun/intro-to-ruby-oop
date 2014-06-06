class BaseDataSource

  def load
  end
end

class RMDBDataSource
  def load
    puts "load data from RMDB"
    [1,2,3,4,5]
  end
end

class NoSQLDataSource
  def load
    puts "load data from NoSQL"
    [1,2,3,4,5]
  end
end


class BusinessProcess

  def initialize data_source
    @data_source=data_source
  end

  def process
    puts @data_source.load.max
  end

end


b=BusinessProcess.new RMDBDataSource.new

b.process
