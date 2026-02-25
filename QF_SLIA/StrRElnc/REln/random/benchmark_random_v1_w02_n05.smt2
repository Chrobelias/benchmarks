(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "351") (re.* (str.to_re "12")))))

(assert (> (+ (* (- 4) (str.len x)) (* (- 5) (str.to_int x))) 91))

(check-sat)