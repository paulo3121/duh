defmodule Scrap do
  def getProsa do
    response = Req.get!("http://arquivopessoa.net/textos/986")
    # IO.inspect(response.body)
    {:ok, document} = Floki.parse_document(response.body)

    [{_div, _class, [autor]}] = Floki.find(document, "div.autor")
    [{_h1, _class, [titulo]}] = Floki.find(document, "h1.titulo-texto")
    [{_div, _class, lines}] = Floki.find(document, "div.texto-poesia")
    IO.puts(lines)
  end
end
