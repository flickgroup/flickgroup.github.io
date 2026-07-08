# TEMPORARY write-phase profiler — remove after diagnosing slow deploy.
require 'benchmark'

module WriteProfiler
  def write(dest)
    t = Benchmark.realtime { super }
    if t > 0.5
      label = respond_to?(:relative_path) ? relative_path : (respond_to?(:path) ? path : self.class.name)
      puts "WRITE-PROFILE #{format('%7.2f', t)}s  #{self.class}  #{label}"
    end
    t
  end
end

[Jekyll::StaticFile, Jekyll::Document, Jekyll::Page].each do |klass|
  klass.prepend(WriteProfiler)
end

Jekyll::Hooks.register :site, :post_write do |site|
  puts "WRITE-PROFILE post_write hooks starting"
end
