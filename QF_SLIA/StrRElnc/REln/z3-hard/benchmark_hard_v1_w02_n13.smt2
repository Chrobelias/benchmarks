(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.+ (str.to_re "359")))))

(assert (< (+ (* (- 6) (str.len x)) (* 3 (str.to_int x))) 66))

(check-sat)