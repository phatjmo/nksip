defmodule NKSip.Mixfile do
  use Mix.Project

  def project do
    [app: :nksip,
     version: "0.0.1",
     language: :erlang,
     deps: deps]
  end

  def application do
    [applications: [], mod: {:nksip, []}]
  end

  defp deps do
    [
      {:mix_erlang_tasks, "0.1.0"},
      {:lager, "basho/lager.git", tag: "2.2.3", override: true},
      {:jsx, github: "talentdeficit/jsx", tag: "v2.8.0", override: true},
      {:jiffy, github: "davisp/jiffy", tag: "0.14.8", override: true},
      {:eper, github: "massemanet/eper", tag: "0.97.6", override: true},
      {:meck, github: "basho/meck", tag: "0.8.2", override: true},
      {:nklib, "phatjmo/nklib", override: true},
      {:ranch, github: "ninenines/ranch",  tag: "1.1.0", override: true},
      {:cowlib, github: "ninenines/cowlib", tag: "1.3.0", override: true},
      {:cowboy, github: "extend/cowboy", branch: "master", override: true},
      {:gun, github: "ninenines/gun", ref: "427230d6f94f5b8a396fd504a73d73d1d65ab0a7", override: true},
      {:nkpacket, github: "phatjmo/nkpacket", override: true},
      {:luerl, github: "rvirding/luerl", ref: "develop", override: true}
    ]
  end
end
