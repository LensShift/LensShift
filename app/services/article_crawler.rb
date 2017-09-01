class ArticleCrawler
	attr_accessor :doc, :url, :publisher

	def initialize(url)
		@url = url
		@doc = Nokogiri::HTML(open(url))
		@publisher = self.publisher
	end

	def title
		if @publisher.nil?
			self.doc.at_css("meta[property='og:title']")['content']
		else
			self.doc.at_css("#{@publisher.title_find}")['content']
		end
	end

	def description
		if @publisher.nil?
			self.doc.at_css("meta[property='og:description']")['content']
		else
			self.doc.at_css("#{@publisher.description_find}")['content']
		end
	end

	def image_url
		if @publisher.nil?
			self.doc.at_css("meta[property='og:image']")['content']
		else
			self.doc.at_css("#{@publisher.image_find}")['content']
		end
	end

	def publisher
		@publisher = Publisher.find_by_host_url(self.get_host)
	end

	def publisher_name
		if @publisher.nil?
			self.doc.at_css("meta[property='og:site_name']")['content']
		else
			@publisher.name
		end
	end
	
	def get_host
	  uri = URI.parse(self.url)
	  uri = URI.parse("http://#{url}") if uri.scheme.nil?
	  host = uri.host.downcase
	  host.start_with?('www.') ? host[4..-1] : host
	end
end