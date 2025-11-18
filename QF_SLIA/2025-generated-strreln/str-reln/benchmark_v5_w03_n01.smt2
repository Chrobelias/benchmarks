(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.union (str.to_re "134") (re.+ (str.to_re "9")))))
(assert (str.in_re y (re.union (re.++ (str.to_re "150") (str.to_re "84")) (re.* (str.to_re "35")))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "9") (re.* (re.range "7" "9"))))))
(assert (str.in_re a (re.* (re.++ (re.range "3" "9") (re.* (re.* (str.to_re "988")))))))
(assert (str.in_re b (re.++ (re.* (str.to_re "12")) (re.* (re.* (str.to_re "33"))))))

(assert (<= (+ (* 8 (str.len y)) (* 8 (str.len z)) (* 8 (str.len a)) (* (- 9) (str.len b))) 37))
(assert (<= (+ (str.len b) (* 9 (str.to_int y))) 84))

(check-sat)