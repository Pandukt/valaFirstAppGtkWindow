public class MyApp : Gtk.Application {

    public MyApp () {
        Object (
            application_id: "com.github.panduckt.valaFirstAppGtkWindow",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 600;
        main_window.default_width = 600;
        main_window.title = "Hello World";

        var button_hello= new Gtk.Button.with_label ("Click me!");
        button_hello.margin = 12;
        button_hello.clicked.connect(()=> {
            button_hello.label = "Hello world!";
            button_hello.sensitive = false;
        });

        main_window.add(button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}
