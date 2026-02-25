(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ "85" y)))

(assert (str.in_re y (re.* (re.+ (re.* (str.to_re "553"))))))
(assert (str.in_re x (re.* (re.union (str.to_re "458") (re.++ (re.range "0" "9") (re.* (str.to_re "930")))))))

(assert (< (* 5 (str.to_int y)) 64))
(assert (<= (+ (* (- 9) (str.len x)) (* 7 (str.len y))) 37))
(assert (> (* 6 (str.len x)) 37))

(check-sat)