class ParaQue

  @@frases = nil

  def self.mesmo?
    @@frases ||= YAML.load_file(File.dirname(__FILE__) + '/../para_que.yml')
    @@frases[Kernel.rand(@@frases.size - 1)]
  end

end
