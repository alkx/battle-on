module SendAttackSpecHelper

  def stubbed_request
    stub_request(:post, "http://battle.platform45.com/nuke").with(:body => "{\"x\":null,\"y\":null,\"id\":100}", :headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'Content-Length'=>'28', 'User-Agent'=>'Ruby'}).to_return(:status => 200, :body => { :status=>"hit", :x => 0, :y => 4 }.to_json, :headers => {})
  end

end
