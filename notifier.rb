class Notifier

  @app_name = "Coal"
  @duration = 1200

  def notify(name, body)
    summary = @app_name

    unless name.nil?
      summary += " - #{name}"
    end

    %x( notify-send -t #{@duration} "#{summary}" "#{body}" )
  end

end
