(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.range "3" "9") (re.* (re.union (str.to_re "650") (str.to_re "26"))))))

(assert (> (+ (* 7 (str.len x)) (* (- 10) (str.to_int x))) 21))

(check-sat)