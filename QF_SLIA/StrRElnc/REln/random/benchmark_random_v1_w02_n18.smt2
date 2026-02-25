(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "4") (re.* (str.to_re "914"))))))

(assert (> (+ (* 7 (str.len x)) (* 7 (str.to_int x))) 43))

(check-sat)