(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.++ (str.to_re "265") (re.+ (str.to_re "75"))))))

(assert (= (+ (* 2 (str.len x)) (* (- 2) (str.to_int x))) 41))

(check-sat)