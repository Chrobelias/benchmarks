(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= y (str.++ z x "34" a "23" "24")))

(assert (str.in_re a (re.union (re.union (str.to_re "8") (re.+ (str.to_re "66"))) (str.to_re "796"))))
(assert (str.in_re x (re.++ (re.range "4" "7") (re.* (str.to_re "55")))))
(assert (str.in_re y (re.++ (re.* (re.range "1" "9")) (re.++ (str.to_re "44") (re.* (re.range "1" "9"))))))
(assert (str.in_re z (re.union (str.to_re "573") (re.+ (str.to_re "74")))))

(assert (<= (+ (* (- 10) (str.len x)) (* (- 3) (str.len y)) (* 4 (str.len z)) (* (- 7) (str.len a)) (- (str.to_int x)) (* (- 6) (str.to_int y))) 31))

(check-sat)