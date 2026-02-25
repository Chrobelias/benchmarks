(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "32" y)))

(assert (str.in_re x (re.+ (re.union (str.to_re "869") (re.union (str.to_re "31") (re.+ (re.range "1" "7")))))))
(assert (str.in_re y (re.union (str.to_re "82") (re.union (re.range "5" "7") (re.+ (str.to_re "8"))))))

(assert (<= (+ (* (- 5) (str.len x)) (* (- 3) (str.len y))) 28))
(assert (>= (+ (* (- 5) (str.to_int x)) (str.to_int y)) 14))

(check-sat)