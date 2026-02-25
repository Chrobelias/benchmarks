(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (re.range "0" "5") (str.to_re "672")))))

(assert (<= (+ (* (- 3) (str.len x)) (* (- 2) (str.to_int x))) 87))

(check-sat)