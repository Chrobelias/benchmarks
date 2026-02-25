(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (re.range "2" "6") (re.++ (re.+ (str.to_re "930")) (str.to_re "53"))))))

(assert (<= (+ (* 9 (str.len x)) (* (- 2) (str.to_int x))) 55))
(assert (>= (* (- 5) (str.to_int x)) 29))

(check-sat)