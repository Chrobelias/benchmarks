(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.* (re.++ (re.+ (str.to_re "1")) (re.+ (str.to_re "786"))))))
(assert (str.in_re y (re.++ (re.++ (re.+ (str.to_re "67")) (str.to_re "96")) (re.+ (str.to_re "942")))))
(assert (str.in_re x (re.++ (re.* (re.++ (re.+ (str.to_re "124")) (str.to_re "0"))) (str.to_re "4"))))
(assert (str.in_re z (re.+ (re.union (str.to_re "418") (re.* (re.range "2" "7"))))))

(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 9) (str.to_int y)) (* 5 (str.to_int z)) (* 5 (str.to_int a))) 43))
(assert (= (+ (* 10 (str.len x)) (* 7 (str.len y)) (* (- 5) (str.len z)) (* (- 10) (str.len a))) 87))

(check-sat)