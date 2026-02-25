(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ "58" y)))

(assert (str.in_re x (re.+ (re.union (str.to_re "6") (re.union (str.to_re "782") (re.range "2" "8"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "570") (re.* (str.to_re "97"))) (str.to_re "6"))))

(assert (> (+ (* 3 (str.len x)) (* (- 4) (str.to_int y))) 85))

(check-sat)