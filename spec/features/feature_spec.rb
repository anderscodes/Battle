describe Battle do
  it 'should load requested string' do
    expect('/').to have_content?('Testing infrastructure working!')
  end
end
