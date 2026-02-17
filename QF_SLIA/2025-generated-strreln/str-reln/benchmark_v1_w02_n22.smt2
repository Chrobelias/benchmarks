(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "8") (re.union (str.to_re "38") (str.to_re "7"))))))

(assert (>= (+ (* 10 (str.len x)) (* (- 10) (str.to_int x))) 84))

(check-sat)