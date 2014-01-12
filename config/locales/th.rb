{
  th: {
    date: {
      formats: {
        default: lambda { |date, _| "วัน%A ที่ %-d %B พ.ศ. #{date.year + 543}" },
        age: lambda { |date, _| "#{((Date.today - date).to_i)/365}" }
      }
    },
    time: {
      formats: {
        short: lambda { |date, _| "วันที่ %-d %B พ.ศ. #{date.year + 543}" },
        year: lambda { |date, _| "#{date.year + 543}" },
        default: lambda { |date, _| "วัน%A ที่ %-d %B พ.ศ. #{date.year + 543} เวลา %H.%M น." }
      }
    }
  }
}

