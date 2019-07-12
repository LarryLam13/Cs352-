#include <click/config.h>
#include "changecontents.hh"
#include <click/args.hh>
CLICK_DECLS

changeContents::changeContents()
{
}

int
changeContents::configure(Vector<String> &conf, ErrorHandler *errh)
{
    return Args(conf, this, errh).read_mp("OFFSET", _offset)
	.read_mp("DATA", _data).complete();
}

Packet *
changeContents::simple_action(Packet *p)
{
    if (p->length() <= _offset)
	return p;
    else if (WritablePacket *q = p->uniqueify()) {
	int len = q->length() - _offset;
	memcpy(q->data() + _offset, _data.data(), (_data.length() < len ? _data.length() : len));
	return q;
    } else
	return 0;
}

CLICK_ENDDECLS
EXPORT_ELEMENT(changeContents)
ELEMENT_MT_SAFE(changeContents)
