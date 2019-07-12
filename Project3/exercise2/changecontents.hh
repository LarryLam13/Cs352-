#ifndef CLICK_CHANGECONTENTS_HH
#define CLICK_CHANGECONTENTS_HH
#include <click/element.hh>

CLICK_DECLS

class changeContents : public Element { public:

    changeContents() CLICK_COLD;

    const char *class_name() const		{ return "changeContents"; }
    const char *port_count() const		{ return PORTS_1_1; }
    int configure(Vector<String> &, ErrorHandler *) CLICK_COLD;

    Packet *simple_action(Packet *);

  private:

    unsigned _offset;
    String _data;

};

CLICK_ENDDECLS
#endif
