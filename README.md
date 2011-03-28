# editor.rb

A venry tool for irb.

## Usage

      $ irb -reditor
      > Editor.edit("abc") # Edit "abc" with the external editor.
      => "abc has changed"
      > include Editor
      > record.body = edit(record.body)
      > record.save # play with ActiveRecord.

##Requirements
 * Ruby1.9

## Author
 * NANKI Haruo (@nanki / nanki at dotswitch dot net)

## License
MIT License.
 
